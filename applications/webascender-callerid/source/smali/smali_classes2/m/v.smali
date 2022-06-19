.class public final Lm/v;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/v$a;
    }
.end annotation


# static fields
.field private static final c:Lm/a0;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lm/a0;->g:Lm/a0$a;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    move-result-object v0

    sput-object v0, Lm/v;->c:Lm/a0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lm/f0;-><init>()V

    .line 2
    invoke-static {p1}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm/v;->a:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm/v;->b:Ljava/util/List;

    return-void
.end method

.method private final a(Ln/g;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ln/g;->m()Ln/f;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lm/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 3
    invoke-virtual {p1, v2}, Ln/f;->O0(I)Ln/f;

    .line 4
    :cond_1
    iget-object v2, p0, Lm/v;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p1, v2}, Ln/f;->O0(I)Ln/f;

    .line 6
    iget-object v2, p0, Lm/v;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1}, Ln/f;->a()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lm/v;->a(Ln/g;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    sget-object v0, Lm/v;->c:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/v;->a(Ln/g;Z)J

    return-void
.end method
