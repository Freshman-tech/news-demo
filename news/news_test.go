package news

import (
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
)

func TestArticle_FormatPublishedDate(t *testing.T) {

	art := Article{
		PublishedAt: time.Date(2018, time.January, 3, 1, 2, 3, 0, time.UTC),
	}
	exp := art.FormatPublishedDate()

	assert.Equal(t, "January 3, 2018", exp)
}
