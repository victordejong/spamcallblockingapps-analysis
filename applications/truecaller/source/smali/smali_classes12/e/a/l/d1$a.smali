.class public final Le/a/l/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/d1;->hn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Le/a/l/d1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/d1$a;

    invoke-direct {v0}, Le/a/l/d1$a;-><init>()V

    sput-object v0, Le/a/l/d1$a;->a:Le/a/l/d1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    sget-object p2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setElevation(F)V

    return-void
.end method
