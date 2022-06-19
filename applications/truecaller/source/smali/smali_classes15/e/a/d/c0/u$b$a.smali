.class public final Le/a/d/c0/u$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/u$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/u$b;

.field public final synthetic c:Le/a/d/c0/u$b$b;


# direct methods
.method public constructor <init>(Le/a/d/c0/u$b;Le/a/d/c0/u$b$b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/u$b$a;->b:Le/a/d/c0/u$b;

    iput-object p2, p0, Le/a/d/c0/u$b$a;->c:Le/a/d/c0/u$b$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/u$b$a;->b:Le/a/d/c0/u$b;

    iget-object v0, v0, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    iget-object v1, p0, Le/a/d/c0/u$b$a;->c:Le/a/d/c0/u$b$b;

    .line 2
    iget-object v0, v0, Le/a/d/c0/u;->b:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
