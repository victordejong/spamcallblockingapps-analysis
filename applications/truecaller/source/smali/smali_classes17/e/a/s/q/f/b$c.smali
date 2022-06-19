.class public final Le/a/s/q/f/b$c;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/q/f/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/q/f/b;


# direct methods
.method public constructor <init>(Le/a/s/q/f/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/s/q/f/b$c;->a:Le/a/s/q/f/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/s/q/f/b$c;->a:Le/a/s/q/f/b;

    invoke-virtual {p1}, Le/a/s/q/f/b;->PA()Le/a/s/q/f/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/s/q/f/c;->T6()V

    :cond_0
    return-void
.end method
