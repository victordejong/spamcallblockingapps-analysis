.class public Ln3/m0/c0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/j$i;,
        Ln3/m0/c0/j$h;
    }
.end annotation


# static fields
.field public static a:Ln3/c0/f0/a;

.field public static b:Ln3/c0/f0/a;

.field public static c:Ln3/c0/f0/a;

.field public static d:Ln3/c0/f0/a;

.field public static e:Ln3/c0/f0/a;

.field public static f:Ln3/c0/f0/a;

.field public static g:Ln3/c0/f0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln3/m0/c0/j$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/j$a;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->a:Ln3/c0/f0/a;

    .line 2
    new-instance v0, Ln3/m0/c0/j$b;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/j$b;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->b:Ln3/c0/f0/a;

    .line 3
    new-instance v0, Ln3/m0/c0/j$c;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Ln3/m0/c0/j$c;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->c:Ln3/c0/f0/a;

    .line 4
    new-instance v0, Ln3/m0/c0/j$d;

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/j$d;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->d:Ln3/c0/f0/a;

    .line 5
    new-instance v0, Ln3/m0/c0/j$e;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Ln3/m0/c0/j$e;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->e:Ln3/c0/f0/a;

    .line 6
    new-instance v0, Ln3/m0/c0/j$f;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/j$f;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->f:Ln3/c0/f0/a;

    .line 7
    new-instance v0, Ln3/m0/c0/j$g;

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/j$g;-><init>(II)V

    sput-object v0, Ln3/m0/c0/j;->g:Ln3/c0/f0/a;

    return-void
.end method
