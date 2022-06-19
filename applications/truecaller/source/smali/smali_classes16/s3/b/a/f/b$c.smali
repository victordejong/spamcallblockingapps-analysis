.class public final Ls3/b/a/f/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b/a/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/b/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-void
.end method
