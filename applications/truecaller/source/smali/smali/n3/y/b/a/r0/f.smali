.class public final synthetic Ln3/y/b/a/r0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/r0/h$g;


# static fields
.field public static final a:Ln3/y/b/a/r0/h$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/y/b/a/r0/f;

    invoke-direct {v0}, Ln3/y/b/a/r0/f;-><init>()V

    sput-object v0, Ln3/y/b/a/r0/f;->a:Ln3/y/b/a/r0/h$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ln3/y/b/a/r0/a;

    .line 1
    sget-object v0, Ln3/y/b/a/r0/h;->a:Ljava/util/regex/Pattern;

    .line 2
    iget-object p1, p1, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
