package com.facebook.stetho.json;

import com.facebook.stetho.common.ExceptionUtil;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.facebook.stetho.json.annotation.JsonValue;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/json/ObjectMapper.class */
public class ObjectMapper {
    @GuardedBy("mJsonValueMethodCache")
    private final Map<Class<?>, Method> mJsonValueMethodCache = new IdentityHashMap();

    private <T> T _convertFromJSONObject(JSONObject jSONObject, Class<T> cls) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, JSONException {
        Field[] fields;
        Constructor<T> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        T newInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : cls.getFields()) {
            if (!Modifier.isStatic(field.getModifiers())) {
                Object obj = getValueForField(field, jSONObject.opt(field.getName()));
                try {
                    field.set(newInstance, obj);
                    continue;
                } catch (IllegalArgumentException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Class: ");
                    sb.append(cls.getSimpleName());
                    sb.append(" Field: ");
                    sb.append(field.getName());
                    sb.append(" type ");
                    sb.append(obj != null ? obj.getClass().getName() : "null");
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            }
        }
        return newInstance;
    }

    private JSONObject _convertToJSONObject(Object obj) throws JSONException, InvocationTargetException, IllegalAccessException {
        Field[] fields;
        JsonProperty jsonProperty;
        JSONObject jSONObject = new JSONObject();
        for (Field field : obj.getClass().getFields()) {
            if (!Modifier.isStatic(field.getModifiers()) && (jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class)) != null) {
                Object obj2 = field.get(obj);
                Class<?> type = field.getType();
                if (obj2 != null) {
                    type = obj2.getClass();
                }
                jSONObject.put(field.getName(), (!jsonProperty.required() || obj2 != null) ? obj2 == JSONObject.NULL ? obj2 : getJsonValue(obj2, type, field) : JSONObject.NULL);
            }
        }
        return jSONObject;
    }

    private static boolean canDirectlySerializeClass(Class cls) {
        return isWrapperOrPrimitiveType(cls) || cls.equals(String.class);
    }

    private List<Object> convertArrayToList(Field field, JSONArray jSONArray) throws IllegalAccessException, JSONException {
        if (List.class.isAssignableFrom(field.getType())) {
            Type[] actualTypeArguments = ((ParameterizedType) field.getGenericType()).getActualTypeArguments();
            if (actualTypeArguments.length != 1) {
                throw new IllegalArgumentException("Only able to handle a single type in a list " + field.getName());
            }
            Class<? extends Enum> cls = (Class) actualTypeArguments[0];
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                if (cls.isEnum()) {
                    arrayList.add(getEnumValue(jSONArray.getString(i), cls));
                } else if (canDirectlySerializeClass(cls)) {
                    arrayList.add(jSONArray.get(i));
                } else {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (jSONObject == null) {
                        arrayList.add(null);
                    } else {
                        arrayList.add(convertValue(jSONObject, cls));
                    }
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("only know how to deserialize List<?> on field " + field.getName());
    }

    private JSONArray convertListToJsonArray(Object obj) throws InvocationTargetException, IllegalAccessException {
        JSONArray jSONArray = new JSONArray();
        for (Object obj2 : (List) obj) {
            Object obj3 = null;
            if (obj2 != null) {
                obj3 = getJsonValue(obj2, obj2.getClass(), null);
            }
            jSONArray.put(obj3);
        }
        return jSONArray;
    }

    private Enum getEnumByMethod(String str, Class<? extends Enum> cls, Method method) {
        Enum[] enumArr;
        for (Enum r0 : (Enum[]) cls.getEnumConstants()) {
            try {
                Object invoke = method.invoke(r0, new Object[0]);
                if (invoke != null && invoke.toString().equals(str)) {
                    return r0;
                }
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }
        throw new IllegalArgumentException("No enum constant " + cls.getName() + "." + str);
    }

    private Enum getEnumValue(String str, Class<? extends Enum> cls) {
        Method jsonValueMethod = getJsonValueMethod(cls);
        return jsonValueMethod != null ? getEnumByMethod(str, cls, jsonValueMethod) : Enum.valueOf(cls, str);
    }

    private Object getJsonValue(Object obj, Class<?> cls, Field field) throws InvocationTargetException, IllegalAccessException {
        if (obj == null) {
            return null;
        }
        if (List.class.isAssignableFrom(cls)) {
            return convertListToJsonArray(obj);
        }
        Method jsonValueMethod = getJsonValueMethod(cls);
        if (jsonValueMethod != null) {
            return jsonValueMethod.invoke(obj, new Object[0]);
        }
        if (!canDirectlySerializeClass(cls)) {
            return convertValue(obj, JSONObject.class);
        }
        if (cls.equals(Double.class) || cls.equals(Float.class)) {
            double doubleValue = ((Number) obj).doubleValue();
            if (Double.isNaN(doubleValue)) {
                return "NaN";
            }
            if (doubleValue == Double.POSITIVE_INFINITY) {
                return "Infinity";
            }
            if (doubleValue == Double.NEGATIVE_INFINITY) {
                return "-Infinity";
            }
        }
        return obj;
    }

    @Nullable
    private Method getJsonValueMethod(Class<?> cls) {
        Method method;
        synchronized (this.mJsonValueMethodCache) {
            Method method2 = this.mJsonValueMethodCache.get(cls);
            method = method2;
            if (method2 == null) {
                method = method2;
                if (!this.mJsonValueMethodCache.containsKey(cls)) {
                    method = getJsonValueMethodImpl(cls);
                    this.mJsonValueMethodCache.put(cls, method);
                }
            }
        }
        return method;
    }

    @Nullable
    private static Method getJsonValueMethodImpl(Class<?> cls) {
        Method[] methods = cls.getMethods();
        for (int i = 0; i < methods.length; i++) {
            if (methods[i].getAnnotation(JsonValue.class) != null) {
                return methods[i];
            }
        }
        return null;
    }

    private Object getValueForField(Field field, Object obj) throws JSONException {
        if (obj != null) {
            try {
                if (obj == JSONObject.NULL) {
                    return null;
                }
                if (obj.getClass() == field.getType()) {
                    return obj;
                }
                if (obj instanceof JSONObject) {
                    return convertValue(obj, field.getType());
                }
                if (field.getType().isEnum()) {
                    return getEnumValue((String) obj, field.getType().asSubclass(Enum.class));
                }
                if (obj instanceof JSONArray) {
                    return convertArrayToList(field, (JSONArray) obj);
                }
                if (obj instanceof Number) {
                    Number number = (Number) obj;
                    Class<?> type = field.getType();
                    if (!(type == Integer.class || type == Integer.TYPE)) {
                        if (!(type == Long.class || type == Long.TYPE)) {
                            if (!(type == Double.class || type == Double.TYPE)) {
                                if (!(type == Float.class || type == Float.TYPE)) {
                                    if (!(type == Byte.class || type == Byte.TYPE)) {
                                        if (!(type == Short.class || type == Short.TYPE)) {
                                            throw new IllegalArgumentException("Not setup to handle class " + type.getName());
                                        }
                                        return Short.valueOf(number.shortValue());
                                    }
                                    return Byte.valueOf(number.byteValue());
                                }
                                return Float.valueOf(number.floatValue());
                            }
                            return Double.valueOf(number.doubleValue());
                        }
                        return Long.valueOf(number.longValue());
                    }
                    return Integer.valueOf(number.intValue());
                }
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException("Unable to set value for field " + field.getName(), e);
            }
        }
        return obj;
    }

    private static boolean isWrapperOrPrimitiveType(Class<?> cls) {
        return cls.isPrimitive() || cls.equals(Boolean.class) || cls.equals(Integer.class) || cls.equals(Character.class) || cls.equals(Byte.class) || cls.equals(Short.class) || cls.equals(Double.class) || cls.equals(Long.class) || cls.equals(Float.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T convertValue(Object obj, Class<T> cls) throws IllegalArgumentException {
        if (obj == 0) {
            return null;
        }
        if (cls != Object.class && cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        try {
            if (obj instanceof JSONObject) {
                return (T) _convertFromJSONObject((JSONObject) obj, cls);
            }
            if (cls == JSONObject.class) {
                return (T) _convertToJSONObject(obj);
            }
            throw new IllegalArgumentException("Expecting either fromValue or toValueType to be a JSONObject");
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (InstantiationException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchMethodException e3) {
            throw new IllegalArgumentException(e3);
        } catch (InvocationTargetException e4) {
            throw ExceptionUtil.propagate(e4.getCause());
        } catch (JSONException e5) {
            throw new IllegalArgumentException(e5);
        }
    }
}
