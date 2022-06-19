.class public final Lg/g/a/b/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/c0;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/s0;->a:Lg/g/a/b/c0;

    .line 3
    iput-object p2, p0, Lg/g/a/b/s0;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/a/b/s0;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;)Lg/g/a/b/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lg/g/a/b/s0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/s0;

    invoke-direct {v0, p0, p1, p2}, Lg/g/a/b/s0;-><init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/c0;Lm/l0/a;Landroid/content/Context;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/g/a/b/c0;->r(Lm/l0/a;Landroid/content/Context;)Lm/c0;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/c0;

    return-object p0
.end method


# virtual methods
.method public b()Lm/c0;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/a/b/s0;->a:Lg/g/a/b/c0;

    iget-object v1, p0, Lg/g/a/b/s0;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/l0/a;

    iget-object v2, p0, Lg/g/a/b/s0;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lg/g/a/b/s0;->c(Lg/g/a/b/c0;Lm/l0/a;Landroid/content/Context;)Lm/c0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/s0;->b()Lm/c0;

    move-result-object v0

    return-object v0
.end method
