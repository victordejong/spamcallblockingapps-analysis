.class public final Lq3/b/i/c$a;
.super Lq3/b/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lq3/b/i/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/b/i/c$a;

    invoke-direct {v0}, Lq3/b/i/c$a;-><init>()V

    sput-object v0, Lq3/b/i/c$a;->a:Lq3/b/i/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/i/c;-><init>(Ls1/z/c/f;)V

    return-void
.end method
