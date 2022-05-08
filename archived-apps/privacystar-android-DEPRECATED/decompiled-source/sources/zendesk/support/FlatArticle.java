package zendesk.support;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/support/FlatArticle.class */
public class FlatArticle implements Comparable<FlatArticle> {
    private Article article;
    private Category category;
    private Section section;

    public FlatArticle(Category category, Section section, Article article) {
        this.category = category == null ? new Category() : category;
        this.section = section == null ? new Section() : section;
        this.article = article == null ? new Article() : article;
    }

    public int compareTo(@NonNull FlatArticle flatArticle) {
        if (flatArticle == null) {
            return -1;
        }
        return toString().compareTo(flatArticle.toString());
    }

    @NonNull
    public Article getArticle() {
        return this.article;
    }

    @NonNull
    public Category getCategory() {
        return this.category;
    }

    @NonNull
    public Section getSection() {
        return this.section;
    }

    public String toString() {
        return this.category.getName() + ", " + this.section.getName() + ", " + this.article.getTitle();
    }
}
