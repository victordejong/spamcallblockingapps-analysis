.class public final Lg/g/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/b/j1/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/a;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/b/j1/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/b/j1/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/b/j1/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/e/e/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/a;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/m;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/i;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/g;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/e/e/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/d;->a:Lg/g/a/b/a;

    .line 3
    iput-object p2, p0, Lg/g/a/b/d;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/a/b/d;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lg/g/a/b/d;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lg/g/a/b/d;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/g/a/b/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/a;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/m;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/i;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/g;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/e/e/m;",
            ">;)",
            "Lg/g/a/b/d;"
        }
    .end annotation

    .line 1
    new-instance v6, Lg/g/a/b/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lg/g/a/b/d;-><init>(Lg/g/a/b/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static c(Lg/g/a/b/a;Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)Lg/g/a/b/j1/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lg/g/a/b/a;->c(Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)Lg/g/a/b/j1/e;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/b/j1/e;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/b/j1/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lg/g/a/b/d;->a:Lg/g/a/b/a;

    iget-object v1, p0, Lg/g/a/b/d;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/b/j1/m;

    iget-object v2, p0, Lg/g/a/b/d;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/a/b/j1/i;

    iget-object v3, p0, Lg/g/a/b/d;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/a/b/j1/g;

    iget-object v4, p0, Lg/g/a/b/d;->e:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/a/e/e/m;

    invoke-static {v0, v1, v2, v3, v4}, Lg/g/a/b/d;->c(Lg/g/a/b/a;Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)Lg/g/a/b/j1/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/d;->b()Lg/g/a/b/j1/e;

    move-result-object v0

    return-object v0
.end method
