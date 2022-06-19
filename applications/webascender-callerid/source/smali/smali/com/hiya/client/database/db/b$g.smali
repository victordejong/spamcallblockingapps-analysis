.class public final Lcom/hiya/client/database/db/b$g;
.super Landroidx/room/r/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/database/db/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/r/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf/t/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS block_numbers (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `phone_number` TEXT NOT NULL, `normalized_number` TEXT NOT NULL, `created_time_millis` INTEGER NOT NULL, `is_partial` INTEGER NOT NULL, `country_calling_code` INTEGER)"

    .line 1
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_block_numbers_normalized_number_is_partial` ON block_numbers (`normalized_number`, `is_partial`)"

    .line 2
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    return-void
.end method
