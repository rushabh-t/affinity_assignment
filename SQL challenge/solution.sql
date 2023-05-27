-- Question A
SELECT COUNT(DISTINCT SPECIES) AS tiger_types
FROM taxonomy
WHERE species LIKE 'Panthera tigris%';

SELECT ncbi_id AS sumatran_ncbi, species
FROM taxonomy
WHERE species = 'Panthera tigris sumatrae (Sumatran tiger)';

-- Question B
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'family' AND COLUMN_NAME IN (
    SELECT COLUMN_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'full_region'
    )

-- Question C
SELECT t.species, MAX(rf.length) AS longest_dna FROM taxonomy AS t
JOIN rfamseq AS rf ON t.ncbi_id = rf.ncbi_id
WHERE LOWER(species) LIKE '%oryza sativa%'
GROUP BY t.species
ORDER BY longest_dna DESC;

-- Question D
SELECT f.rfam_acc, f.rfam_id, r.max_length
FROM family AS f
JOIN (
    SELECT fr.rfam_acc, MAX(rs.length) AS max_length
    FROM full_region AS fr
    JOIN rfamseq AS rs ON fr.rfamseq_acc = rs.rfamseq_acc
    WHERE rs.length > 1000000
    GROUP BY fr.rfam_acc
) AS r ON f.rfam_acc = r.rfam_acc
ORDER BY r.max_length DESC
LIMIT 15 OFFSET 120;


