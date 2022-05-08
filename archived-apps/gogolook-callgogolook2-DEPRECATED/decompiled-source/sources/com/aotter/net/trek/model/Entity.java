package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/Entity.class */
public class Entity {
    public static final String ENTITY_ACTION_KEY = "action";
    public static final String ENTITY_ADDRESS_KEY = "address";
    public static final String ENTITY_CATEGORY_KEY = "categories";
    public static final String ENTITY_DATE_KEY = "publishedDate";
    public static final String ENTITY_FAV_KEY = "favorite";
    public static final String ENTITY_ID_KEY = "id";
    public static final String ENTITY_IMG_KEY = "img";
    public static final String ENTITY_META_KEY = "meta";
    public static final String ENTITY_PHONE_KEY = "phone";
    public static final String ENTITY_REF_KEY = "reference";
    public static final String ENTITY_TAG_KEY = "tags";
    public static final String ENTITY_TITLE_KEY = "title";
    public static final String ENTITY_TYPE_KEY = "type";
    public static final String ENTITY_URL_KEY = "url";
    @NonNull
    public final Map<String, Object> mEntityDetailsMap = new HashMap();

    public String getID() {
        return String.valueOf(this.mEntityDetailsMap.get("id"));
    }

    public void setAction(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("action", str);
        }
    }

    public void setAddress(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("address", str);
        }
    }

    public void setCategories(String[] strArr) {
        if (strArr != null) {
            this.mEntityDetailsMap.put("categories", strArr);
        }
    }

    public void setFavorite(int i) {
        this.mEntityDetailsMap.put(ENTITY_FAV_KEY, Integer.valueOf(i));
    }

    public void setID(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("id", str);
        }
    }

    public void setImg(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put(ENTITY_IMG_KEY, str);
        }
    }

    public void setMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.mEntityDetailsMap.put("meta", jSONObject);
        }
    }

    public void setPhone(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("phone", str);
        }
    }

    public void setPublishedDate(Long l) {
        if (l != null) {
            this.mEntityDetailsMap.put(ENTITY_DATE_KEY, l);
        }
    }

    public void setReference(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put(ENTITY_REF_KEY, str);
        }
    }

    public void setTags(String[] strArr) {
        if (strArr != null) {
            this.mEntityDetailsMap.put(ENTITY_TAG_KEY, strArr);
        }
    }

    public void setTitle(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("title", str);
        }
    }

    public void setType(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("type", str);
        }
    }

    public void setUrl(String str) {
        if (str != null) {
            this.mEntityDetailsMap.put("url", str);
        }
    }

    public JSONObject toJsonObject() {
        return new JSONObject(this.mEntityDetailsMap);
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mEntityDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
