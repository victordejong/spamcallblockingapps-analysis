.class public final Le/a/l/t2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/c/n/d;

.field public final b:Le/a/s2/h/e;

.field public final c:Le/a/l/a/y;


# direct methods
.method public constructor <init>(Le/a/l/c/n/d;Le/a/s2/h/e;Le/a/l/a/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/t2/a;->a:Le/a/l/c/n/d;

    iput-object p2, p0, Le/a/l/t2/a;->b:Le/a/s2/h/e;

    iput-object p3, p0, Le/a/l/t2/a;->c:Le/a/l/a/y;

    return-void
.end method
