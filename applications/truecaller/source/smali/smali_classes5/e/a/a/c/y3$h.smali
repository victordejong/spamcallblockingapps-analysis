.class public Le/a/a/c/y3$h;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;Le/a/a/c/y3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$h;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$h;->a:Le/a/a/c/y3;

    .line 2
    sget v1, Le/a/a/c/y3;->t1:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->B2()V

    .line 5
    iget-object p1, v0, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    invoke-interface {p1}, Le/a/a/c/k/a/j$b;->r4()V

    :cond_0
    return-void
.end method
