.class public final Le/a/k0/n/b/l;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/l;->a:Le/a/k0/n/b/k;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/l;->a:Le/a/k0/n/b/k;

    .line 2
    iget-object v0, v0, Le/a/k0/n/b/k;->k:Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/k0/n/b/l;->a:Le/a/k0/n/b/k;

    .line 5
    iget-object v0, v0, Le/a/k0/n/b/k;->c:Le/a/k0/n/c/g;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Le/a/k0/n/c/g;->A5()V

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/k0/n/b/l;->a:Le/a/k0/n/b/k;

    invoke-virtual {v0}, Le/a/k0/n/b/k;->c()V

    :cond_1
    return-void
.end method
