.class public final Le/a/d0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/i0$b;
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
    iput-object p1, p0, Le/a/d0/i0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Number;ZILe/a/f4/g/p;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            "ZI",
            "Le/a/f4/g/p;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d0/i0;->a:Le/a/r2/w;

    new-instance v8, Le/a/d0/i0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/d0/i0$b;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Number;ZILe/a/f4/g/p;Le/a/d0/i0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
