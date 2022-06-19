.class public final Le/a/i/f0/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/k/c;


# instance fields
.field public final a:Le/a/i/f0/k/a;


# direct methods
.method public constructor <init>(Le/a/i/f0/k/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "campaignReceiver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/k/e;->a:Le/a/i/f0/k/a;

    return-void
.end method
