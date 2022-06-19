.class public final Ln3/y/b/a/q0/w/z;
.super Ln3/y/b/a/q0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/w/z$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/y/b/a/x0/v;JJI)V
    .locals 16

    .line 1
    new-instance v1, Ln3/y/b/a/q0/a$b;

    invoke-direct {v1}, Ln3/y/b/a/q0/a$b;-><init>()V

    new-instance v2, Ln3/y/b/a/q0/w/z$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Ln3/y/b/a/q0/w/z$a;-><init>(ILn3/y/b/a/x0/v;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Ln3/y/b/a/q0/a;-><init>(Ln3/y/b/a/q0/a$e;Ln3/y/b/a/q0/a$g;JJJJJJI)V

    return-void
.end method
