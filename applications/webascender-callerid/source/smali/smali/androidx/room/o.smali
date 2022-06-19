.class Landroidx/room/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/t/a/c$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Lf/t/a/c$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lf/t/a/c$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/o;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/room/o;->b:Ljava/io/File;

    .line 4
    iput-object p3, p0, Landroidx/room/o;->c:Lf/t/a/c$c;

    return-void
.end method


# virtual methods
.method public a(Lf/t/a/c$b;)Lf/t/a/c;
    .locals 7

    .line 1
    new-instance v6, Landroidx/room/n;

    iget-object v1, p1, Lf/t/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/o;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/o;->b:Ljava/io/File;

    iget-object v0, p1, Lf/t/a/c$b;->c:Lf/t/a/c$a;

    iget v4, v0, Lf/t/a/c$a;->a:I

    iget-object v0, p0, Landroidx/room/o;->c:Lf/t/a/c$c;

    .line 2
    invoke-interface {v0, p1}, Lf/t/a/c$c;->a(Lf/t/a/c$b;)Lf/t/a/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILf/t/a/c;)V

    return-object v6
.end method
