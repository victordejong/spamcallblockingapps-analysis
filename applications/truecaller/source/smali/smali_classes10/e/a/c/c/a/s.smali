.class public final Le/a/c/c/a/s;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1a

    const/16 v1, 0x1b

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` \nUSING FTS4(`d`, \n`k`, \n`p`, \n`c`, \n`o`, \n`f`, \n`g`, \n`s`, \n`val1`, \n`val2`, \n`val3`, \n`val4`, \n`val5`, \n`address`, \n`dff_val1`, \n`dff_val2`, \n`dff_val3`, \n`dff_val4`, \n`dff_val5`, \ncontent=`parsed_data_object_table`)"

    const-string v2, "INSERT INTO pdo_fts(pdo_fts) VALUES (\'rebuild\')"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
