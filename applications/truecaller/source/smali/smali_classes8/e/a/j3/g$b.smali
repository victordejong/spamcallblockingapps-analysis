.class public final Le/a/j3/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j3/g;->c(Ljava/lang/String;Ljava/lang/String;Le/a/j3/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j3/f$b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/j3/f$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/j3/g$b;->a:Le/a/j3/f$b;

    iput-object p2, p0, Le/a/j3/g$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const/4 p1, 0x2

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x192

    if-ne p1, v0, :cond_5

    const/4 p1, 0x3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 5
    :goto_3
    iget-object v0, p0, Le/a/j3/g$b;->a:Le/a/j3/f$b;

    iget-object v1, p0, Le/a/j3/g$b;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Le/a/j3/f$b;->a(ILjava/lang/String;)V

    return-void
.end method
