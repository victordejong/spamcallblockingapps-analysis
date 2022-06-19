.class public final Le/a/v/p/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/v/p/c;


# direct methods
.method public constructor <init>(Le/a/v/p/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactComparator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/p/o;->a:Le/a/v/p/c;

    return-void
.end method
