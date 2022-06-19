.class public final Lg/f/a/b/i/x/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/f/a/b/i/u/a/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
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
            "Lg/f/a/b/i/x/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/f/a/b/i/y/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/f/a/b/i/x/j/c;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;",
            "Lj/a/a<",
            "Lg/f/a/b/i/y/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/b/i/x/i;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/f/a/b/i/x/i;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/f/a/b/i/x/i;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lg/f/a/b/i/x/i;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/x/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/f/a/b/i/x/j/c;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;",
            "Lj/a/a<",
            "Lg/f/a/b/i/y/a;",
            ">;)",
            "Lg/f/a/b/i/x/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/a/b/i/x/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/f/a/b/i/x/i;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lg/f/a/b/i/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lg/f/a/b/i/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lg/f/a/b/i/x/h;->a(Landroid/content/Context;Lg/f/a/b/i/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lg/f/a/b/i/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lg/f/a/b/i/u/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/x/i;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/f/a/b/i/x/i;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/a/b/i/x/j/c;

    iget-object v2, p0, Lg/f/a/b/i/x/i;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    iget-object v3, p0, Lg/f/a/b/i/x/i;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/f/a/b/i/y/a;

    invoke-static {v0, v1, v2, v3}, Lg/f/a/b/i/x/i;->c(Landroid/content/Context;Lg/f/a/b/i/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lg/f/a/b/i/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/f/a/b/i/x/i;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object v0

    return-object v0
.end method
