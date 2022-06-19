.class public final Le/m/d/z/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/d/z/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/v/b<",
            "Le/m/d/b0/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/w/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/z/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/m/d/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/d/v/b<",
            "Le/m/d/b0/q;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Le/m/d/w/i;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/d/z/g/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/e;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/d/z/e;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/d/z/e;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/d/z/e;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/m/d/z/e;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/m/d/z/e;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Le/m/d/z/e;->g:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/d/z/e;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/m/d/g;

    iget-object v0, p0, Le/m/d/z/e;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/d/v/b;

    iget-object v0, p0, Le/m/d/z/e;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/m/d/w/i;

    iget-object v0, p0, Le/m/d/z/e;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/d/v/b;

    iget-object v0, p0, Le/m/d/z/e;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/perf/config/RemoteConfigManager;

    iget-object v0, p0, Le/m/d/z/e;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/m/d/z/g/d;

    iget-object v0, p0, Le/m/d/z/e;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/firebase/perf/session/SessionManager;

    .line 2
    new-instance v0, Le/m/d/z/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/m/d/z/c;-><init>(Le/m/d/g;Le/m/d/v/b;Le/m/d/w/i;Le/m/d/v/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Le/m/d/z/g/d;Lcom/google/firebase/perf/session/SessionManager;)V

    return-object v0
.end method
