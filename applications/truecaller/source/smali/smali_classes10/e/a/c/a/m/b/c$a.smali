.class public final Le/a/c/a/m/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/i/f/a;


# direct methods
.method public constructor <init>(Le/a/c/i/f/a;)V
    .locals 1

    const-string v0, "ftsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/c$a;->a:Le/a/c/i/f/a;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Le/a/c/a/m/b/c;

    iget-object v0, p0, Le/a/c/a/m/b/c$a;->a:Le/a/c/i/f/a;

    invoke-direct {p1, v0}, Le/a/c/a/m/b/c;-><init>(Le/a/c/i/f/a;)V

    return-object p1
.end method
