.class public abstract Le/a/b/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/f/a$g;,
        Le/a/b/a/f/a$b;,
        Le/a/b/a/f/a$c;,
        Le/a/b/a/f/a$a;,
        Le/a/b/a/f/a$f;,
        Le/a/b/a/f/a$d;,
        Le/a/b/a/f/a$e;,
        Le/a/b/a/f/a$h;,
        Le/a/b/a/f/a$i;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/a/f/a;->b:I

    const/16 p2, 0xc8

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12b

    if-lt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    :goto_1
    iput-boolean p1, p0, Le/a/b/a/f/a;->a:Z

    return-void
.end method

.method public static final a(Lx3/a0;Le/m/e/k;)Le/a/b/a/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "Lu3/l0;",
            ">;",
            "Le/m/e/k;",
            ")",
            "Le/a/b/a/f/a;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gson"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lx3/a0;->a:Lu3/k0;

    .line 2
    iget v1, v1, Lu3/k0;->e:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_6

    const/16 p1, 0xcc

    if-eq v1, p1, :cond_5

    const/16 p1, 0x190

    if-eq v1, p1, :cond_4

    const/16 p1, 0x193

    if-eq v1, p1, :cond_3

    const/16 p1, 0x1a6

    if-eq v1, p1, :cond_1

    const/16 p0, 0x1f4

    if-eq v1, p0, :cond_0

    .line 3
    new-instance p0, Le/a/b/a/f/a$h;

    invoke-direct {p0, v1}, Le/a/b/a/f/a$h;-><init>(I)V

    goto :goto_2

    .line 4
    :cond_0
    sget-object p0, Le/a/b/a/f/a$d;->c:Le/a/b/a/f/a$d;

    goto :goto_2

    .line 5
    :cond_1
    new-instance p1, Le/a/b/a/f/a$i;

    sget-object v1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->Companion:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse$b;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->access$getGson$cp()Le/m/e/k;

    move-result-object v0

    .line 8
    iget-object p0, p0, Lx3/a0;->c:Lu3/l0;

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->access$getType$cp()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 11
    invoke-virtual {v0, p0, v1}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "gson.fromJson(\n         \u2026           type\n        )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    .line 12
    invoke-direct {p1, p0}, Le/a/b/a/f/a$i;-><init>(Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object p0, Le/a/b/a/f/a$c;->c:Le/a/b/a/f/a$c;

    goto :goto_2

    .line 14
    :cond_4
    sget-object p0, Le/a/b/a/f/a$a;->c:Le/a/b/a/f/a$a;

    goto :goto_2

    .line 15
    :cond_5
    sget-object p0, Le/a/b/a/f/a$b;->c:Le/a/b/a/f/a$b;

    goto :goto_2

    .line 16
    :cond_6
    iget-object p0, p0, Lx3/a0;->b:Ljava/lang/Object;

    .line 17
    check-cast p0, Lu3/l0;

    if-nez p0, :cond_7

    .line 18
    sget-object p0, Le/a/b/a/f/a$d;->c:Le/a/b/a/f/a$d;

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0

    const-class v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    invoke-virtual {p1, p0, v0}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 20
    new-instance p1, Le/a/b/a/f/a$g;

    const-string v0, "bizProfile"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Le/a/b/a/f/a$g;-><init>(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0
.end method
