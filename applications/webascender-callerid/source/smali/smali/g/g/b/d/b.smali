.class public final Lg/g/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/job/JobScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/job/JobScheduler;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/b;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/b/d/b;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lg/g/b/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/job/JobScheduler;",
            ">;)",
            "Lg/g/b/d/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/b;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/b;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Lg/g/b/d/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/a;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/a;-><init>(Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/d/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/d/b;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/g/b/d/b;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-static {v0, v1}, Lg/g/b/d/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Lg/g/b/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/b;->b()Lg/g/b/d/a;

    move-result-object v0

    return-object v0
.end method
