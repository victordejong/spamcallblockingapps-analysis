.class public Le/i/b/z1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/w;->f(Ljava/io/File;)Le/i/b/z1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Le/i/b/z1/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Le/i/b/z1/w;


# direct methods
.method public constructor <init>(Le/i/b/z1/w;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/w$a;->b:Le/i/b/z1/w;

    iput-object p2, p0, Le/i/b/z1/w$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/z1/w$a;->b:Le/i/b/z1/w;

    .line 2
    iget-object v0, v0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    .line 3
    iget-object v1, p0, Le/i/b/z1/w$a;->a:Ljava/io/File;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    new-instance v1, Le/i/b/z1/l;

    iget-object v0, v0, Le/i/b/z1/y;->c:Le/i/b/z1/a0;

    invoke-direct {v1, v2, v3, v0}, Le/i/b/z1/l;-><init>(Ljava/lang/String;Landroid/util/AtomicFile;Le/i/b/z1/a0;)V

    return-object v1
.end method
