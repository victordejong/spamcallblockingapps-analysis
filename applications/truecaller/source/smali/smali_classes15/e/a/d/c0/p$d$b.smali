.class public final Le/a/d/c0/p$d$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Lq3/a/w2/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/x<",
            "-",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/c0/p$d$b;->a:Lq3/a/w2/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/d/c0/p$d$b;->a:Lq3/a/w2/x;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-static {p1, p2}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    return-void
.end method
