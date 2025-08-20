# 3475. DNA Pattern Recognition

🔗 [LeetCode Problem](https://leetcode.com/problems/dna-pattern-recognition/)

## 🧠 Problem Summary

Given a table `Samples` containing `sample_id`, `dna_sequence`, and `species`, return details about each sequence along with flags indicating the presence of specific patterns:
- Starts with `ATG`
- Ends with `TAA`, `TAG`, or `TGA`
- Contains `ATAT`
- Contains `GGG`

## ✅ Approach (Pattern Matching with LIKE and CASE)

This solution uses `LIKE` pattern matching within `CASE` statements to check for specific DNA motifs.

### Explanation:

- Use `CASE WHEN dna_seque_
