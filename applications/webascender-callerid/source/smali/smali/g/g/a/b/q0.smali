.class public final Lg/g/a/b/q0;
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
            "Lg/g/a/a/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/k/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/k/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/k/h;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lg/g/a/a/k/d;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/j;",
            ">;",
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/h;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/q0;->a:Lg/g/a/b/c0;

    .line 3
    iput-object p2, p0, Lg/g/a/b/q0;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/a/b/q0;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lg/g/a/b/q0;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lg/g/a/b/q0;->e:Lj/a/a;

    .line 7
    iput-object p6, p0, Lg/g/a/b/q0;->f:Lj/a/a;

    .line 8
    iput-object p7, p0, Lg/g/a/b/q0;->g:Lj/a/a;

    .line 9
    iput-object p8, p0, Lg/g/a/b/q0;->h:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/g/a/b/q0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lg/g/a/a/k/d;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/j;",
            ">;",
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/k/h;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lg/g/a/b/q0;"
        }
    .end annotation

    .line 1
    new-instance v9, Lg/g/a/b/q0;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lg/g/a/b/q0;-><init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v9
.end method

.method public static c(Lg/g/a/b/c0;Lg/g/a/a/k/d;Lg/g/a/a/k/j;Lm/l0/a;Lg/g/a/a/k/a;Landroid/content/SharedPreferences;Lg/g/a/a/k/h;Landroid/content/Context;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lg/g/a/b/c0;->p(Lg/g/a/a/k/d;Lg/g/a/a/k/j;Lm/l0/a;Lg/g/a/a/k/a;Landroid/content/SharedPreferences;Lg/g/a/a/k/h;Landroid/content/Context;)Lm/c0;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/c0;

    return-object p0
.end method


# virtual methods
.method public b()Lm/c0;
    .locals 8

    .line 1
    iget-object v0, p0, Lg/g/a/b/q0;->a:Lg/g/a/b/c0;

    iget-object v1, p0, Lg/g/a/b/q0;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/k/d;

    iget-object v2, p0, Lg/g/a/b/q0;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/a/a/k/j;

    iget-object v3, p0, Lg/g/a/b/q0;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/l0/a;

    iget-object v4, p0, Lg/g/a/b/q0;->e:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/a/a/k/a;

    iget-object v5, p0, Lg/g/a/b/q0;->f:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences;

    iget-object v6, p0, Lg/g/a/b/q0;->g:Lj/a/a;

    invoke-interface {v6}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/g/a/a/k/h;

    iget-object v7, p0, Lg/g/a/b/q0;->h:Lj/a/a;

    invoke-interface {v7}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Lg/g/a/b/q0;->c(Lg/g/a/b/c0;Lg/g/a/a/k/d;Lg/g/a/a/k/j;Lm/l0/a;Lg/g/a/a/k/a;Landroid/content/SharedPreferences;Lg/g/a/a/k/h;Landroid/content/Context;)Lm/c0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/q0;->b()Lm/c0;

    move-result-object v0

    return-object v0
.end method
