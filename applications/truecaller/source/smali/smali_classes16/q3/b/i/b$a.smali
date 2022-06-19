.class public final Lq3/b/i/b$a;
.super Lq3/b/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lq3/b/i/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/b/i/b$a;

    invoke-direct {v0}, Lq3/b/i/b$a;-><init>()V

    sput-object v0, Lq3/b/i/b$a;->a:Lq3/b/i/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/i/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
