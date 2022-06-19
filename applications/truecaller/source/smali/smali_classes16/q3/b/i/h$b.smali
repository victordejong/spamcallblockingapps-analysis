.class public final Lq3/b/i/h$b;
.super Lq3/b/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lq3/b/i/h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/b/i/h$b;

    invoke-direct {v0}, Lq3/b/i/h$b;-><init>()V

    sput-object v0, Lq3/b/i/h$b;->a:Lq3/b/i/h$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/i/h;-><init>(Ls1/z/c/f;)V

    return-void
.end method
