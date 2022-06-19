.class public final Le/a/p5/v0/c$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/v0/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/p5/v0/c$a;

.field public final synthetic c:Landroid/telephony/PhoneStateListener;

.field public final synthetic d:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Le/a/p5/v0/c$a;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v0/c$a$a;->b:Le/a/p5/v0/c$a;

    iput-object p2, p0, Le/a/p5/v0/c$a$a;->c:Landroid/telephony/PhoneStateListener;

    iput-object p3, p0, Le/a/p5/v0/c$a$a;->d:Landroid/telephony/TelephonyManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p5/v0/c$a$a;->b:Le/a/p5/v0/c$a;

    iget-object v0, v0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iget-object v1, p0, Le/a/p5/v0/c$a$a;->c:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Le/a/p5/v0/c$a$a;->d:Landroid/telephony/TelephonyManager;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v3, v0, Le/a/p5/v0/c;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
