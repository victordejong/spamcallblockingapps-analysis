.class public final Landroidx/work/q;
.super Landroidx/work/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/q$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/q$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/work/x$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/x$a;->c:Landroidx/work/impl/n/p;

    iget-object p1, p1, Landroidx/work/x$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/x;-><init>(Ljava/util/UUID;Landroidx/work/impl/n/p;Ljava/util/Set;)V

    return-void
.end method
