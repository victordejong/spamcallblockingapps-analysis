package zendesk.support;

import android.support.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpResponse.class */
public class HelpResponse {
    private List<CategoryItem> categories;
    @SerializedName("category_count")
    private int categoryCount;

    HelpResponse() {
    }

    @NonNull
    public List<CategoryItem> getCategories() {
        return CollectionUtils.copyOf(this.categories);
    }

    public int getCategoryCount() {
        return this.categoryCount;
    }
}
