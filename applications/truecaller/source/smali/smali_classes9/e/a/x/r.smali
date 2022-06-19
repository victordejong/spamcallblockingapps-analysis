.class public final Le/a/x/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/x/h0/a;


# direct methods
.method public constructor <init>(Le/a/x/h0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ghostCallEventLogger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x/r;->a:Le/a/x/h0/a;

    return-void
.end method
