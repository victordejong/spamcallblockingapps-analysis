.class public Le/a/b4/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b4/a/c$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/b4/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile g:Le/a/b4/a/c;

.field public static final h:Le/a/b4/a/c$a;


# instance fields
.field public final a:Le/g/a/d;

.field public final b:Le/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/g/a/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b4/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b4/a/c$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/b4/a/c;->h:Le/a/b4/a/c$a;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Le/a/b4/a/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ls1/z/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isRtl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b4/a/c;->c:Ls1/z/b/a;

    .line 2
    new-instance p1, Le/g/a/c;

    const/16 v0, 0x96

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 3
    invoke-direct {p1, v0, v1, v2}, Le/g/a/c;-><init>(ID)V

    .line 4
    iput-object p1, p0, Le/a/b4/a/c;->a:Le/g/a/d;

    .line 5
    new-instance p1, Le/g/a/g;

    const/4 v0, 0x4

    .line 6
    invoke-direct {p1, v0, v1, v2}, Le/g/a/g;-><init>(ID)V

    .line 7
    iput-object p1, p0, Le/a/b4/a/c;->b:Le/g/a/h;

    return-void
.end method


# virtual methods
.method public final a(CLjava/lang/String;)V
    .locals 1

    const-string v0, "letters"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(CLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "letters"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, ""

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v4, p0, Le/a/b4/a/c;->b:Le/g/a/h;

    invoke-static {p3, v2, v1, v3, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p1, p3}, Le/g/a/h;->J(CLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-static {p2, v2, v1, v3, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    if-ge v3, p3, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/b4/a/c;->a:Le/g/a/d;

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-interface {v1, v2, p1}, Le/g/a/d;->P(CC)C

    .line 4
    iget-object v1, p0, Le/a/b4/a/c;->a:Le/g/a/d;

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-interface {v1, v0, p1}, Le/g/a/d;->P(CC)C

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(C)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b4/a/c;->b:Le/g/a/h;

    invoke-interface {v0, p1}, Le/g/a/h;->i2(C)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/b4/a/c;->c:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(C)C
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b4/a/c;->a:Le/g/a/d;

    invoke-interface {v0, p1, p1}, Le/g/a/d;->t0(CC)C

    move-result p1

    return p1
.end method
