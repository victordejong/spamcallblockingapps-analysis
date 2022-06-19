.class public final Le/a/k0/n/e/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/media/MediaPlayer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/k0/n/e/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/k0/n/e/m;

    invoke-direct {v0}, Le/a/k0/n/e/m;-><init>()V

    sput-object v0, Le/a/k0/n/e/m;->b:Le/a/k0/n/e/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/media/MediaPlayer;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
