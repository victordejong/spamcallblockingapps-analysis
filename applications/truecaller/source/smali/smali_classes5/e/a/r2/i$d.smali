.class public Le/a/r2/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Le/a/r2/c;

.field public final synthetic b:Le/a/r2/i;


# direct methods
.method public constructor <init>(Le/a/r2/i;Le/a/r2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r2/i$d;->b:Le/a/r2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r2/i$d;->a:Le/a/r2/c;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/i$d;->b:Le/a/r2/i;

    .line 2
    iget-object v0, v0, Le/a/r2/i;->e:Landroid/os/Binder;

    return-object v0
.end method

.method public t0(Le/a/r2/h0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/i$d;->a:Le/a/r2/c;

    invoke-virtual {v0, p1}, Le/a/r2/c;->b(Le/a/r2/h0;)Z

    move-result p1

    return p1
.end method
