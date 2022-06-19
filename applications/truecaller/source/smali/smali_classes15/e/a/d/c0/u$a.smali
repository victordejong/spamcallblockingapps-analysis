.class public final Le/a/d/c0/u$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/u;->b(Lq3/a/w2/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/u;

.field public final synthetic c:Le/a/d/c0/u$c;


# direct methods
.method public constructor <init>(Le/a/d/c0/u;Le/a/d/c0/u$c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/u$a;->b:Le/a/d/c0/u;

    iput-object p2, p0, Le/a/d/c0/u$a;->c:Le/a/d/c0/u$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Le/a/d/c0/u$a;->b:Le/a/d/c0/u;

    iget-object v0, p0, Le/a/d/c0/u$a;->c:Le/a/d/c0/u$c;

    .line 3
    iget-object p1, p1, Le/a/d/c0/u;->b:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
