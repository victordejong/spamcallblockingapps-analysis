.class Lt/a/l$b;
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
    name = "b"
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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lt/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/k<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final c:Lt/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/h<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lt/a/k;Lt/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lt/a/k<",
            "TE;>;",
            "Lt/a/h<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt/a/l$b;->a:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lt/a/l$b;->b:Lt/a/k;

    .line 5
    iput-object p3, p0, Lt/a/l$b;->c:Lt/a/h;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lt/a/k;Lt/a/h;Lt/a/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lt/a/l$b;-><init>(Ljava/lang/Class;Lt/a/k;Lt/a/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/a/l$b;->a:Ljava/lang/Class;

    invoke-static {v0}, Lt/a/o;->e(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lt/a/o;Lt/a/o;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lt/a/l$b;->a:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lt/a/o;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lt/a/l$b;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lt/a/o;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :cond_1
    iget-object p2, p0, Lt/a/l$b;->c:Lt/a/h;

    iget-object v1, p0, Lt/a/l$b;->b:Lt/a/k;

    invoke-static {v0, p1, p2, v1, p3}, Lt/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;Lt/a/h;Lt/a/k;Z)V

    return-void
.end method
