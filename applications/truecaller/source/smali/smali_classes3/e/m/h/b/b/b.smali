.class public Le/m/h/b/b/b;
.super Le/m/h/a/c/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/h/b/b/s;)V
    .locals 2

    .line 1
    sget-object p2, Le/m/h/a/d/n/a;->c:Le/m/h/a/d/n/a;

    sget-object v0, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, v0}, Le/m/h/a/c/b;-><init>(Ljava/lang/String;Le/m/h/a/d/n/a;Le/m/h/a/d/k;)V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "COM.GOOGLE.BASE_TRANSLATE:"

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/h/b/b/b;->e:Ljava/lang/String;

    .line 2
    sget-object v1, Le/m/h/b/b/e/w;->a:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    .line 3
    sget v1, Le/m/h/b/b/a;->a:I

    const-string v1, "he"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "iw"

    :cond_0
    const-string v1, "en"

    .line 5
    invoke-static {v1, v0}, Le/m/h/b/b/e/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le/m/h/b/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/h/b/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Le/m/h/a/c/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Le/m/h/b/b/b;

    .line 4
    iget-object v1, p0, Le/m/h/b/b/b;->e:Ljava/lang/String;

    iget-object p1, p1, Le/m/h/b/b/b;->e:Ljava/lang/String;

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Le/m/h/a/c/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/m/h/b/b/b;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
