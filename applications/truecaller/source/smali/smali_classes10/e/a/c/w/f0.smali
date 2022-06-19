.class public final Le/a/c/w/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/w/f0$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/c/d/j0;

.field public final b:Le/a/c/w/o0/g;

.field public final c:Le/a/c/h/e;

.field public final d:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j0;Le/a/c/w/o0/g;Le/a/c/h/e;Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smsBackupDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/f0;->a:Le/a/c/c/d/j0;

    iput-object p2, p0, Le/a/c/w/f0;->b:Le/a/c/w/o0/g;

    iput-object p3, p0, Le/a/c/w/f0;->c:Le/a/c/h/e;

    iput-object p4, p0, Le/a/c/w/f0;->d:Le/a/c/b/e;

    return-void
.end method
