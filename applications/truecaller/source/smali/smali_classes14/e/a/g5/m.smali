.class public final Le/a/g5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g5/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/g5/m$c;,
        Le/a/g5/m$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/g5/m;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "I)",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/g5/m;->a:Le/a/r2/w;

    new-instance v7, Le/a/g5/m$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/g5/m$b;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ILe/a/g5/m$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;JJII)Le/a/r2/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "JJII)",
            "Le/a/r2/x<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/g5/m;->a:Le/a/r2/w;

    new-instance v12, Le/a/g5/m$c;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v11, 0x0

    move-object v2, v12

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Le/a/g5/m$c;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;JJIILe/a/g5/m$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v12}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
