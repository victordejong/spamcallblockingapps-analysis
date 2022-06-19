.class Lt/a/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt/a/l$c;"
    }
.end annotation


# instance fields
.field private final a:Lt/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/k<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lt/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/p<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final c:Lt/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/h<",
            "Lt/a/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lt/a/k;Lt/a/p;Lt/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/k<",
            "TE;>;",
            "Lt/a/p<",
            "TE;>;",
            "Lt/a/h<",
            "Lt/a/o;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt/a/l$d;->a:Lt/a/k;

    .line 4
    iput-object p2, p0, Lt/a/l$d;->b:Lt/a/p;

    .line 5
    iput-object p3, p0, Lt/a/l$d;->c:Lt/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lt/a/k;Lt/a/p;Lt/a/h;Lt/a/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lt/a/l$d;-><init>(Lt/a/k;Lt/a/p;Lt/a/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lt/a/o;Lt/a/o;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    iget-object p3, p0, Lt/a/l$d;->c:Lt/a/h;

    .line 2
    invoke-interface {p3, p1, p2}, Lt/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lt/a/l$d;->b:Lt/a/p;

    invoke-interface {p1, p2}, Lt/a/p;->selectData(Lt/a/o;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p2, p0, Lt/a/l$d;->a:Lt/a/k;

    invoke-interface {p2, p1}, Lt/a/k;->update(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
