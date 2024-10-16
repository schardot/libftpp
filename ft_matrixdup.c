#include "libft.h"

char	**ft_matrixdup(char **matrix, int height)
{
	int		i;
	char	**newmatrix;

	if (height <= 0 || !matrix)
		return (NULL);
	newmatrix = (char **)malloc((height + 1) * sizeof(char *));
	if (!newmatrix)
		return (NULL);
	i = 0;
	while (i < height)
	{
		newmatrix[i] = ft_strdup(matrix[i]);
		if (!newmatrix[i])
		{
			ft_free_matrix(newmatrix);
			return (NULL);
		}
		i ++;
	}
	newmatrix[i] = NULL;
	return (newmatrix);
}