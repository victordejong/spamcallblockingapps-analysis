.class public Le/a/a/c/y3$d;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$d;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 2
    iget-object p2, p0, Le/a/a/c/y3$d;->a:Le/a/a/c/y3;

    .line 3
    sget v0, Le/a/a/c/y3;->t1:I

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p2, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->B2()V

    .line 6
    iget-object p1, p2, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    invoke-interface {p1}, Le/a/a/c/k/a/j$b;->r4()V

    :cond_0
    return-void
.end method
