.class public Le/m/h/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "iw"

    const-string v1, "he"

    const-string v2, "in"

    const-string v3, "id"

    const-string v4, "nb"

    const-string v5, "no"

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_translate/zzu;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "af"

    const-string v1, "sq"

    const-string v2, "ar"

    const-string v3, "be"

    const-string v4, "bg"

    const-string v5, "bn"

    const-string v6, "ca"

    const-string v7, "zh"

    const-string v8, "hr"

    const-string v9, "cs"

    const-string v10, "da"

    const-string v11, "nl"

    const-string v12, "en"

    const-string v13, "eo"

    const-string v14, "et"

    const-string v15, "fi"

    const-string v16, "fr"

    const-string v17, "gl"

    const-string v18, "ka"

    const-string v19, "de"

    const-string v20, "el"

    const-string v21, "gu"

    const-string v22, "ht"

    const-string v23, "he"

    const-string v24, "hi"

    const-string v25, "hu"

    const-string v26, "is"

    const-string v27, "id"

    const-string v28, "ga"

    const-string v29, "it"

    const-string v30, "ja"

    const-string v31, "kn"

    const-string v32, "ko"

    const-string v33, "lt"

    const-string v34, "lv"

    const-string v35, "mk"

    const-string v36, "mr"

    const-string v37, "ms"

    const-string v38, "mt"

    const-string v39, "no"

    const-string v40, "fa"

    const-string v41, "pl"

    const-string v42, "pt"

    const-string v43, "ro"

    const-string v44, "ru"

    const-string v45, "sk"

    const-string v46, "sl"

    const-string v47, "es"

    const-string v48, "sv"

    const-string v49, "sw"

    const-string v50, "tl"

    const-string v51, "ta"

    const-string v52, "te"

    const-string v53, "th"

    const-string v54, "tr"

    const-string v55, "uk"

    const-string v56, "ur"

    const-string v57, "vi"

    const-string v58, "cy"

    .line 1
    filled-new-array/range {v0 .. v58}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "he"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "iw"

    :cond_0
    return-object p0
.end method
