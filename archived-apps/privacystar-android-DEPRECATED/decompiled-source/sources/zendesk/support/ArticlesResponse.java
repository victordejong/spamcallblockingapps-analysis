package zendesk.support;

import android.support.annotation.NonNull;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticlesResponse.class */
interface ArticlesResponse {
    @NonNull
    List<Article> getArticles();

    @NonNull
    List<Category> getCategories();

    @NonNull
    List<Section> getSections();

    @NonNull
    List<User> getUsers();
}
