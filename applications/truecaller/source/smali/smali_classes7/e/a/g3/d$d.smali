.class public final Le/a/g3/d$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g3/d;->onUserLogin(Lcom/truecaller/clevertap/CleverTapProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.clevertap.CleverTapManagerImpl$onUserLogin$1"
    f = "CleverTapManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g3/d;

.field public final synthetic f:Lcom/truecaller/clevertap/CleverTapProfile;


# direct methods
.method public constructor <init>(Le/a/g3/d;Lcom/truecaller/clevertap/CleverTapProfile;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g3/d$d;->e:Le/a/g3/d;

    iput-object p2, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g3/d$d;

    iget-object v0, p0, Le/a/g3/d$d;->e:Le/a/g3/d;

    iget-object v1, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-direct {p1, v0, v1, p2}, Le/a/g3/d$d;-><init>(Le/a/g3/d;Lcom/truecaller/clevertap/CleverTapProfile;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g3/d$d;

    iget-object v0, p0, Le/a/g3/d$d;->e:Le/a/g3/d;

    iget-object v1, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-direct {p1, v0, v1, p2}, Le/a/g3/d$d;-><init>(Le/a/g3/d;Lcom/truecaller/clevertap/CleverTapProfile;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g3/d$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v0, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-virtual {v0}, Lcom/truecaller/clevertap/CleverTapProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-virtual {v0}, Lcom/truecaller/clevertap/CleverTapProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Le/a/g3/d$d;->e:Le/a/g3/d;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v0}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_3

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SHA-256"

    .line 9
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const-string v1, "digest"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v1, v0

    const-string v4, ""

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_2

    aget-byte v6, v0, v5

    .line 13
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(this, *args)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v4

    :cond_3
    const-string v1, "Identity"

    .line 14
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    iget-object v0, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-virtual {v0}, Lcom/truecaller/clevertap/CleverTapProfile;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "Email"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    iget-object v0, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-virtual {v0}, Lcom/truecaller/clevertap/CleverTapProfile;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "Country"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_6
    iget-object v0, p0, Le/a/g3/d$d;->f:Lcom/truecaller/clevertap/CleverTapProfile;

    invoke-virtual {v0}, Lcom/truecaller/clevertap/CleverTapProfile;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "Language"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    iget-object v0, p0, Le/a/g3/d$d;->e:Le/a/g3/d;

    .line 19
    iget-object v1, v0, Le/a/g3/d;->a:Le/a/g3/b;

    .line 20
    invoke-static {v0, p1}, Le/a/g3/d;->a(Le/a/g3/d;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/g3/b;->c(Ljava/util/Map;)V

    .line 21
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
