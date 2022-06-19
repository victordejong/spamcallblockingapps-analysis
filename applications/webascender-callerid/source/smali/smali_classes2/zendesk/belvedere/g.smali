.class Lzendesk/belvedere/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/g$c;,
        Lzendesk/belvedere/g$e;,
        Lzendesk/belvedere/g$d;,
        Lzendesk/belvedere/g$b;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lzendesk/belvedere/a0/e;->b:I

    sput v0, Lzendesk/belvedere/g;->a:I

    .line 2
    sget v0, Lzendesk/belvedere/a0/h;->f:I

    sput v0, Lzendesk/belvedere/g;->b:I

    return-void
.end method

.method static a(Lzendesk/belvedere/f$b;)Lzendesk/belvedere/g$c;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/belvedere/g$c;

    sget v1, Lzendesk/belvedere/g;->b:I

    sget v2, Lzendesk/belvedere/g;->a:I

    new-instance v3, Lzendesk/belvedere/g$a;

    invoke-direct {v3, p0}, Lzendesk/belvedere/g$a;-><init>(Lzendesk/belvedere/f$b;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lzendesk/belvedere/g$c;-><init>(IILandroid/view/View$OnClickListener;Lzendesk/belvedere/g$a;)V

    return-object v0
.end method

.method static b(Ljava/util/List;Lzendesk/belvedere/f$b;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;",
            "Lzendesk/belvedere/f$b;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/belvedere/g$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/r;

    .line 3
    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lzendesk/belvedere/g$e;

    invoke-direct {v2, p1, v1}, Lzendesk/belvedere/g$e;-><init>(Lzendesk/belvedere/f$b;Lzendesk/belvedere/r;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lzendesk/belvedere/g$d;

    invoke-direct {v2, p1, v1, p2}, Lzendesk/belvedere/g$d;-><init>(Lzendesk/belvedere/f$b;Lzendesk/belvedere/r;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
