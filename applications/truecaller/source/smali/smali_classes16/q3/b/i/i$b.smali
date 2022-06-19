.class public final Lq3/b/i/i$b;
.super Lq3/b/i/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lq3/b/i/i$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/b/i/i$b;

    invoke-direct {v0}, Lq3/b/i/i$b;-><init>()V

    sput-object v0, Lq3/b/i/i$b;->a:Lq3/b/i/i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/i/i;-><init>(Ls1/z/c/f;)V

    return-void
.end method
