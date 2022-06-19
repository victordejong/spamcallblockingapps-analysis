.class public Le/m/d/n/j/j/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/d/n/j/n/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/d/n/j/n/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/j/f0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/m/d/n/j/j/f0;->b:Le/m/d/n/j/n/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/d/n/j/j/f0;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const-string v2, "Error creating marker: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/m/d/n/j/j/f0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Le/m/d/n/j/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/f0;->b:Le/m/d/n/j/n/f;

    iget-object v1, p0, Le/m/d/n/j/j/f0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/d/n/j/n/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
