.class public final Le/a/p5/s0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/s0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/s0/e;-><init>(Ljava/lang/String;Ls1/a/c;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/p5/s0/e$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/p5/s0/e;


# direct methods
.method public constructor <init>(Le/a/p5/s0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/p5/s0/e$c;->a:Le/a/p5/s0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    const-string v0, "cursor"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/p5/s0/e$c;->a:Le/a/p5/s0/e;

    .line 3
    invoke-virtual {v0, p1}, Le/a/p5/s0/e;->a(Landroid/database/Cursor;)I

    move-result v0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
