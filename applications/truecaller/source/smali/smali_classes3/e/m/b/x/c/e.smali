.class public Le/m/b/x/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/d/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/c/e$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/b/x/c/c;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/x/c/e$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/m/b/x/c/e$a;->a:Le/m/b/x/c/c;

    iput-object v0, p0, Le/m/b/x/c/e;->a:Le/m/b/x/c/c;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Le/m/b/x/c/e$a;->b:Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Le/m/b/x/c/e;->b:Ljava/util/Set;

    return-void
.end method
