.class public Le/m/d/r/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/a;


# instance fields
.field public final synthetic a:Le/m/d/r/j/e;


# direct methods
.method public constructor <init>(Le/m/d/r/j/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/r/j/d;->a:Le/m/d/r/j/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Le/m/d/r/j/f;

    iget-object v0, p0, Le/m/d/r/j/d;->a:Le/m/d/r/j/e;

    .line 2
    iget-object v2, v0, Le/m/d/r/j/e;->a:Ljava/util/Map;

    .line 3
    iget-object v3, v0, Le/m/d/r/j/e;->b:Ljava/util/Map;

    .line 4
    iget-object v4, v0, Le/m/d/r/j/e;->c:Le/m/d/r/e;

    .line 5
    iget-boolean v5, v0, Le/m/d/r/j/e;->d:Z

    move-object v0, v6

    move-object v1, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Le/m/d/r/j/f;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;Z)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v6, p1, p2}, Le/m/d/r/j/f;->a(Ljava/lang/Object;Z)Le/m/d/r/j/f;

    .line 8
    invoke-virtual {v6}, Le/m/d/r/j/f;->c()V

    .line 9
    iget-object p1, v6, Le/m/d/r/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method
