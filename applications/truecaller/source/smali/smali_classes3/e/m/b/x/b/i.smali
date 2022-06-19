.class public final Le/m/b/x/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/d/u;


# instance fields
.field public final a:Le/m/b/x/d/u;

.field public final b:Le/m/b/x/b/h;


# direct methods
.method public constructor <init>(Le/m/b/x/d/u;Le/m/b/x/b/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/b/i;->a:Le/m/b/x/d/u;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/m/b/x/b/i;->b:Le/m/b/x/b/h;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/b/i;->b:Le/m/b/x/b/h;

    iget-object v1, p0, Le/m/b/x/b/i;->a:Le/m/b/x/d/u;

    invoke-interface {v0, v1, p1}, Le/m/b/x/b/h;->a(Le/m/b/x/d/u;Ljava/io/OutputStream;)V

    return-void
.end method
